import React from "react";
import { useSelector } from "react-redux";
const Myclasses = () => {
  const currUser = useSelector((state) => state.user.currUser);
  if (!currUser) {
    return <p>Please log in to view your profile.</p>;
  }
  return (
    <div>
      <div class="col py-3">myclasses</div>
    </div>
  );
};
export default Myclasses;
