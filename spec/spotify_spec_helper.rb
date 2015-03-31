def response_string
  '{"uid":"1129481062","info":{"name":"Chris Jewell"}}'
end

def sample_response_string
  OmniAuth::AuthHash.new(
  {
    your_name_is: {
      provider: "spotify",
      uid: "1293837002",
      info: {
        name: "Isaac Norman",
        nickname: "1293837002",
        email: null,
        urls: {
          spotify: "https://open.spotify.com/user/1293837002"
          },
          image: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p200x200/10686623_10152368221872336_4671822425758378016_n.jpg?oh=05acd2a570dd467f1aff301ac969c6ec&oe=5579B821&__gda__=1438136564_91d7b8804b04f7214e1e3106ade1d092"
          },
          credentials: {
            token: "BQBHa-TolNQTCjkgWq2K36WZEg9ZzsSCrx5pJT-_64-knn_T-2_pzyeX-bJbdiRsM5L0hHGD7Bpjr7t0DhomXae3pisqEwm8GrSGaD3BixeXU4lmoJrJInLgt4Fkb3_D2whmzKwFvN5j1afMp6Oh5l5Jrqi8fW-lIuJPTFtd2GSkCF4",
            refresh_token: "AQDKvl15QXv5rRXXT_nSGQRmDOVE0WvBv2I-Oky9Vthy6Gf85Ql5pZvmkMg2kg6ejc6E_4ClTRZvj7NhUv9SGVtpKlDhFGwfQEB4-JCXtVu9_yn9l3dc79-l9dxrwo7hZTY",
            expires_at: 1426589668,
            expires: true
            },
            extra: {
              raw_info: {
                country: "AU",
                display_name: "Isaac Norman",
                external_urls: {
                  spotify: "https://open.spotify.com/user/1293837002"
                  },
                  followers: {
                    href: null,
                    total: 6
                    },
                    href: "https://api.spotify.com/v1/users/1293837002",
                    id: "1293837002",
                    images: [
                      {
                        height: null,
                        url: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p200x200/10686623_10152368221872336_4671822425758378016_n.jpg?oh=05acd2a570dd467f1aff301ac969c6ec&oe=5579B821&__gda__=1438136564_91d7b8804b04f7214e1e3106ade1d092",
                        width: null
                      }
                      ],
                      product: "premium",
                      type: "user",
                      uri: "spotify:user:1293837002"
                    }
                  }
                }
              }
    )
end
