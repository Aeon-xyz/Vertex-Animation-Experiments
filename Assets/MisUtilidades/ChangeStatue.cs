using UnityEngine;
using System.Collections;

public class ChangeStatue : MonoBehaviour {

    public GameObject miEstatua1;
    public GameObject miEstatua2;
    public GameObject miEstatua3;

    // Update is called once per frame
    void Update () {
        if (Input.GetKey(KeyCode.A))
        {
            miEstatua1.SetActive(true);
            miEstatua2.SetActive(false);
            miEstatua3.SetActive(false);
        }
        if (Input.GetKey(KeyCode.S))
        {
            miEstatua1.SetActive(false);
            miEstatua2.SetActive(true);
            miEstatua3.SetActive(false);
        }
        if (Input.GetKey(KeyCode.D))
        {
            miEstatua1.SetActive(false);
            miEstatua2.SetActive(false);
            miEstatua3.SetActive(true);
        }
    }
}
