<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div>
    <div class="container-fluid mt-5">
        <div class="card" style="max-width: 45rem;margin-left: auto;margin-right: auto;">
            <div class="card-body">
                <h5 class="card-title">Flight booking</h5>
                <div class="row">
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span style="height:37px" class="input-group-text" id="addon-wrapping1">Full name</span>
                            <input type="text" class="form-control" placeholder=" " aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping2">ID</span>
                            <input type="text" class="form-control" placeholder=" " aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping3">Email</span>
                            <input type="text" class="form-control" placeholder=" " aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping4">Gender</span>
                            <div class="form-check mt-2">
                                <input class="form-check-input ms-4" type="radio" name="flexRadioDefault"
                                       id="flexRadioDefault1" value="male">
                                <label class="form-check-label ms-2" for="flexRadioDefault1">
                                    Male
                                </label>
                            </div>
                            <div class="form-check mt-2">
                                <input class="form-check-input ms-4" type="radio" name="flexRadioDefault"
                                       id="flexRadioDefault2" value="female" checked>
                                <label class="form-check-label ms-2" for="flexRadioDefault2">
                                    Female
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping5">Phone number</span>
                            <input type="text" class="form-control" placeholder="" aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping6">Choose flight</span>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>---Choose---</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping7">Date of birth</span>
                                <input type="date" id="birthday" name="birthday" style="height:37px;width: 200px">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping8">Luggage</span>
                            <input type="text" class="form-control" placeholder=" " aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                    <div class="col-lg-6 md-12 mt-3">
                        <div class="input-group flex-nowrap">
                            <span  class="input-group-text" id="addon-wrapping9">Payment method</span>
                            <input type="text" class="form-control" placeholder=" " aria-label="Username"
                                   aria-describedby="addon-wrapping">
                        </div>
                    </div>
                </div>
                <br>
                <a href="#" class="btn btn-primary" style="margin-left: 280px;">Submit form</a>
            </div>
        </div>
    </div>
</div>
