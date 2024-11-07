import {
  BrowserRouter,
  Routes,
  Route
} from "react-router-dom";
import RecReqView from "./views/RecReqView"

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<RecReqView />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
