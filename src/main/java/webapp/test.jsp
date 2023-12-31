<%@page import="repository.manageStudent"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Volunteer Sign up form</title>
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
            rel="stylesheet">
    <link rel="stylesheet"
          href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
          crossorigin="anonymous">
    <style>
        html, body {
            min-height: 100%;
        }

        body, div, form, input, select, textarea, label, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: #666;
            line-height: 22px;
        }

        h1 {
            position: absolute;
            margin: 0;
            font-size: 40px;
            color: #fff;
            z-index: 2;
            line-height: 83px;
        }

        textarea {
            width: calc(100% - 12px);
            padding: 5px;
        }

        .testbox {
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
            padding: 20px;
        }

        form {
            width: 100%;
            padding: 20px;
            border-radius: 6px;
            background: #fff;
            box-shadow: 0 0 8px #669999;
        }

        .banner {
            position: relative;
            height: 350px;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .banner::after {
            content: "";
            background-color: rgba(0, 0, 0, 0.3);
            position: absolute;
            width: 100%;
            height: 100%;
        }

        input, select, textarea {
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input {
            width: calc(100% - 10px);
            padding: 5px;
        }

        input[type="date"] {
            padding: 4px 5px;
        }

        textarea {
            width: calc(100% - 12px);
            padding: 5px;
        }

        .item:hover p, .item:hover i, .question:hover p, .question label:hover,
        input:hover::placeholder {
            color: #669999;
        }

        .item input:hover, .item select:hover, .item textarea:hover {
            border: 1px solid transparent;
            box-shadow: 0 0 3px 0 #669999;
            color: #669999;
        }

        .item {
            position: relative;
            margin: 10px 0;
        }

        .item span {
            color: red;
        }

        .week {
            display: flex;
            justfiy-content: space-between;
        }

        .colums {
            display: flex;
            justify-content: space-between;
            flex-direction: row;
            flex-wrap: wrap;
        }

        .colums div {
            width: 48%;
        }

        input[type="date"]::-webkit-inner-spin-button {
            display: none;
        }

        .item i, input[type="date"]::-webkit-calendar-picker-indicator {
            position: absolute;
            font-size: 20px;
            color: #a3c2c2;
        }

        .item i {
            right: 1%;
            top: 30px;
            z-index: 1;
        }

        input[type=radio], input[type=checkbox] {
            display: none;
        }

        label.radio {
            position: relative;
            display: inline-block;
            margin: 5px 20px 15px 0;
            cursor: pointer;
        }

        .question span {
            margin-left: 30px;
        }

        .question-answer label {
            display: block;
        }

        label.radio:before {
            content: "";
            position: absolute;
            left: 0;
            width: 17px;
            height: 17px;
            border-radius: 50%;
            border: 2px solid #ccc;
        }

        input[type=radio]:checked+label:before, label.radio:hover:before {
            border: 2px solid #669999;
        }

        label.radio:after {
            content: "";
            position: absolute;
            top: 6px;
            left: 5px;
            width: 8px;
            height: 4px;
            border: 3px solid #669999;
            border-top: none;
            border-right: none;
            transform: rotate(-45deg);
            opacity: 0;
        }

        input[type=radio]:checked+label:after {
            opacity: 1;
        }

        .flax {
            display: flex;
            justify-content: space-around;
        }

        .btn-block {
            margin-top: 10px;
            text-align: center;
        }

        button {
            width: 150px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #669999;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background: #a3c2c2;
        }

        @media ( min-width : 568px) {
            .name-item, .city-item {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }
            .name-item input, .name-item div {
                width: calc(50% - 20px);
            }
            .name-item div input {
                width: 97%;
            }
            .name-item div label {
                display: block;
                padding-bottom: 5px;
            }
        }
    </style>
</head>
<body>
<div class="testbox">
    <form action="helloServlet" method=post>
        <div class="banner">
            <img src="img\volunteer.jpg" height=100% width=100%>
            <h1>Volunteer Signup</h1>
        </div>
        <br />
        <p>The HELP Group is seeking volunteers to serve our community.
            Fill in the information below to indicate how you would like to
            become involved.</p>
        <br />
        <div class="colums">
            <div class="item">
                <label for="name">Name<span>*</span></label> <input id="name"
                                                                    type="text" name="name" required />
            </div>
            <div class="item">
                <label for="eaddress">Email Address<span>*</span></label> <input
                    id="eaddress" type="text" name="eaddress" required />
            </div>
            <div class="item">
                <label for="phone">Phone<span>*</span></label> <input id="phone"
                                                                      type="tel" name="phone" required />
            </div>
            <div class="item">
                <label for="street">Street<span>*</span></label> <input id="street"
                                                                        type="text" name="street" required />
            </div>
            <div class="item">
                <label for="city">City<span>*</span></label> <input id="city"
                                                                    type="text" name="city" required />
            </div>
            <div class="item">
                <label for="state">State<span>*</span></label> <input id="state"
                                                                      type="text" name="state" required />
            </div>
            <div class="item">
                <label for="zip">Zip<span>*</span></label> <input id="zip"
                                                                  type="text" name="zip" required />
            </div>
        </div>
        <div class="question">
            <label>Include my contact information on lists distributed
                to other attendees.</label>
            <div class="question-answer">
                <div>
                    <input type="radio" value="Yes" id="radio_1" name="info" /> <label
                        for="radio_1" class="radio"><span>Yes</span></label>
                </div>
                <div>
                    <input type="radio" value="No" id="radio_2" name="info" /> <label
                        for="radio_2" class="radio"><span>No</span></label>
                </div>
            </div>
        </div>
        <div class="item">
            <p>Meal Preference</p>
            <input list="meal" name="MealOption" id="browser"
                   style="width: 20%;">
            <datalist id="meal">
                <option selected value="" disabled selected></option>
                <option value="Beef">Beef</option>
                <option value="Chicken">Chicken</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="None">None</option>
            </datalist>
        </div>
        <div class="week">
            <div class="question">
                <label>Days Attending </label>
                <div class="question-answer">
                    <div>
                        <input type="radio" value="Sunday" id="radio_3" name="day" /> <label
                            for="radio_3" class="radio"><span>Sunday</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Monday" id="radio_4" name="day" /> <label
                            for="radio_4" class="radio"><span>Monday</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Tuesday" id="radio_5" name="day" /> <label
                            for="radio_5" class="radio"><span>Tuesday</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Tuesday" id="radio_6" name="day" /> <label
                            for="radio_6" class="radio"><span>c</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Thursday" id="radio_7" name="day" />
                        <label for="radio_7" class="radio"><span>Thursday</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Friday" id="radio_8" name="day" /> <label
                            for="radio_8" class="radio"><span>Friday</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Saturday" id="radio_9" name="day" />
                        <label for="radio_9" class="radio"><span>Saturday</span></label>
                    </div>
                </div>
            </div>
            <div class="question">
                <label>Activities Attending</label>
                <div class="question-answer">
                    <div>
                        <input type="radio" value="CEO luncheon" id="radio_10"
                               name="activity" /> <label for="radio_10" class="radio"><span>CEO
									luncheon</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Finance seminar" id="radio_11"
                               name="activity" /> <label for="radio_11" class="radio"><span>Finance
									seminar</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Leadership seminar" id="radio_12"
                               name="activity" /> <label for="radio_12" class="radio"><span>Leadership
									seminar</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Marketing workshop" id="radio_13"
                               name="activity" /> <label for="radio_13" class="radio"><span>Marketing
									workshop</span></label>
                    </div>
                    <div>
                        <input type="radio" value="Teamwork seminar" id="radio_14"
                               name="activity" /> <label for="radio_14" class="radio"><span>Teamwork
									seminar</span></label>
                    </div>
                </div>
            </div>
        </div>
        <div class="item">
            <label for="visit">Special Requirements</label>
            <textarea id="visit" rows="3" name="specialRequirement"></textarea>
        </div>
        <div class="question">
            <label>Did you attend last years conference?</label>
            <div class="question-answer">
                <div>
                    <input type="radio" value="Yes" id="radio_15" name="contact" /> <label
                        for="radio_15" class="radio"><span>Yes</span></label>
                </div>
                <div>
                    <input type="radio" value="No" id="radio_16" name="contact" /> <label
                        for="radio_16" class="radio"><span>No</span></label>
                </div>
            </div>
        </div>
        <div class="btn-block">
            <button type="submit" >Submit</button>

        </div>
    </form>
</div>
</body>
</html>