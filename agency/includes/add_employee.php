<?php

    //Add Employee by Agency Owner
    if(isset($_SESSION['agency_id'])){
        if(isset($_POST['create_employee'])){
            $agency_id          = $_SESSION['agency_id'];
            $employee_firstname = htmlentities($_POST['employee_firstname']);
            $employee_lastname  = htmlentities($_POST['employee_lastname']);
            $employee_email     = htmlentities($_POST['employee_email']);
            $employee_password  = htmlentities($_POST['employee_password']);
            $employee_contact   = htmlentities($_POST['employee_contact']);
            $employee_address   = htmlentities($_POST['employee_address']);
            $role               = $_POST['agency_role'];
            $date               = $_POST['date'];

            //contact no validation
            $contact = '';
            if(!empty($employee_contact)){
        $pattern = "/^(?:(?:\+|00)[1-9]\d{0,2}\x20?)?(?:\(\d{1,4}\)|\d{1,4})(?:\x20|-)?\d{1,4}(?:\x20|-)?\d{1,4}(?:\x20|-)?\d{1,6}$/";

                
                if(!preg_match($pattern, $employee_contact)){
                    $_SESSION['error'] = 'Invalid Contact Info';
                    header("Location: employees.php?page=add_employee");
                    return;
                }else{
                    $contact = $employee_contact;
                }
            }

            //Empty Field Validation
            if(empty($employee_firstname) || empty($employee_lastname) || empty($employee_email) || empty($employee_password) || empty($employee_contact) || empty($employee_address) || empty($role)){
                $_SESSION['error'] = 'All fields are required';
                header('Location: employees.php?page=add_employee');
                return;
            }else{
                $hash_password = password_hash($employee_password, PASSWORD_BCRYPT, ['cost' => 12]);
                $stmt = $pdo->prepare('INSERT INTO agency_employees(agency_id, employee_firstname, employee_lastname, employee_email, employee_password, employee_contact, employee_address, role, date) VALUES(:agency_id, :employee_firstname, :employee_lastname, :employee_email, :employee_password, :employee_contact, :employee_address, :role, :date)');

                $stmt->execute([':agency_id'            => $agency_id,
                                ':employee_firstname'   => $employee_firstname,
                                ':employee_lastname'    => $employee_lastname,
                                ':employee_email'       => $employee_email,
                                ':employee_password'    => $hash_password,
                                ':employee_contact'     => $contact,
                                ':employee_address'     => $employee_address,
                                ':role'                 => $role,
                                ':date'                 => $date]);
                                
                $_SESSION['success'] = 'New Employee Added';
                header('Location: employees.php');
                return;
            }
        }
    }
?>

<br>
<div class="container">
    <h2 class="p-2 pb-5">Add Employee</h2>

    <?php
        include '../includes/flash_msg.php';
    ?>
    
    <form action="" method="post" class="col-md-8">
        <div class="form-group p-2">
            <label for="employee_firstname">Employee's First Name *</label>
            <input type="text" class="form-control" pattern="^[A-Za-z]+$"  id="" name="employee_firstname" required>
        </div>
        <div class="form-group p-2">
            <label for="employee_firstname">Employee's Last Name *</label>
            <input type="text" class="form-control" pattern="^[A-Za-z]+$" id="" name="employee_lastname" required>
        </div>
        <div class="form-group p-2">
            <label for="employee_email">Email Address *</label>
            <input type="email" class="form-control" id=""  name="employee_email" required>
        </div>
        <div class="form-group p-2">
            <label for="agency_password">Password *</label>
            <input type="password" class="form-control" id="" name="employee_password" required>
        </div>
        <div class="form-group p-2">
            <label for="agency_role">Role *</label><br>
            <select name="agency_role" id="" class="custom-select" required>
                <option value="">Select</option>
                <option value="Senior Staff">Senior Staff</option>
                <option value="Junior Staff">Junior Staff</option>
            </select>
        </div>
        <div class="form-group p-2">
            <label for="agency_contact">Contact Number *</label>
            <input type="text" class="form-control" id="" name="employee_contact" required>
        </div>
        <div class="form-group p-2">
            <label for="agency_address">Address *</label>
            <input type="text" class="form-control" id="" name="employee_address" required>
        </div>
        <div class="form-group p-2">
            <label for="date">Join Date *</label>
            <input type="date" class="form-control" id="" name="date" required>
        </div>
        <div class="form-group p-2">
            <input type="submit" value="Add Employee" name="create_employee" class="btn btn-primary">

            <a href="employees.php" type="button" class="btn btn-secondary float-right">Cancel</a>
        </div>
    </form>
</div>