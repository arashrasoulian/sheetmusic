import React from "react";
import { useSelector } from "react-redux";
const Personaldata = () => {

  const currUser = useSelector((state) => state.user.currUser);
  if (!currUser) {
    return <p>Please log in to view your profile.</p>;
  }
  return(
    <div>
         <div class="col py-3">
             <h1>Profile Page</h1>
            <p>Name: {currUser.name}</p>
            <p>Email: {currUser.email}</p>
            <p>phone: {currUser.phone}</p>
            <p>city: {currUser.city}</p>
            <p>teacher: {currUser.teacher ? "dashagh" : "shaghal"}</p>
            <p>adress: {currUser.adress}</p>
            <p>birthday: {currUser.birthday}</p>
          </div>
    </div>
  )
}
export default Personaldata
