.class public final Lcom/sec/android/app/sns/response/SnsResponseFactory;
.super Ljava/lang/Object;
.source "SnsResponseFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFrameworkResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;
    .registers 15
    .parameter "ID"
    .parameter "requestType"
    .parameter "internalCode"
    .parameter "httpStatusCode"
    .parameter "object"
    .parameter "redirectURL"

    .prologue
    .line 215
    new-instance v0, Lcom/sec/android/app/sns/response/data/SnsResponse;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public createFrameworkResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Lcom/sec/android/app/sns/response/data/SnsResponse;
    .registers 5
    .parameter "httpResp"
    .parameter "parsedData"

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v0

    .line 78
    .local v0, reqType:I
    packed-switch v0, :pswitch_data_11a

    .line 210
    :goto_8
    return-object v1

    .line 81
    :pswitch_9
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 82
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 84
    :pswitch_f
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyDelete;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyDelete;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 85
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 87
    :pswitch_15
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 88
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 90
    :pswitch_1b
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogout;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogout;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 91
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 93
    :pswitch_21
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseActivityForward;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseActivityForward;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 94
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 96
    :pswitch_27
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseActivityRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseActivityRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 97
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 99
    :pswitch_2d
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseActivityStatuslistGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseActivityStatuslistGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 100
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 102
    :pswitch_33
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoriteGetUser;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoriteGetUser;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 103
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 105
    :pswitch_39
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoritePost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoritePost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 106
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 108
    :pswitch_3f
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseCommentPost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentPost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 109
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 111
    :pswitch_45
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseCommentRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 112
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 114
    :pswitch_4b
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendDelete;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendDelete;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 115
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 117
    :pswitch_51
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieveEx;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieveEx;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 118
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 120
    :pswitch_57
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendGroupingGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendGroupingGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 121
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 123
    :pswitch_5d
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 124
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 126
    :pswitch_63
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendRequestPost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendRequestPost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 127
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 129
    :pswitch_69
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseFriendSearch;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendSearch;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 130
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 132
    :pswitch_6f
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseGroupRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseGroupRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 133
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 135
    :pswitch_75
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseMessageDelete;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageDelete;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 136
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 138
    :pswitch_7b
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseMessageFolderRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageFolderRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 139
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 141
    :pswitch_81
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseMessageGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 142
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto :goto_8

    .line 144
    :pswitch_87
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseMessagePost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseMessagePost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 145
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 147
    :pswitch_8e
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseMessageThreadRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageThreadRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 148
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 150
    :pswitch_95
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseNotePost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseNotePost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 151
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 153
    :pswitch_9c
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationPost;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationPost;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 154
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 156
    :pswitch_a3
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseNotificationRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 157
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 159
    :pswitch_aa
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 160
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 162
    :pswitch_b1
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 163
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 165
    :pswitch_b8
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleStatusGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleStatusGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 166
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 168
    :pswitch_bf
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 169
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 171
    :pswitch_c6
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoAlbumRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 172
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 174
    :pswitch_cd
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 175
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 177
    :pswitch_d4
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUpload;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUpload;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 178
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 180
    :pswitch_db
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponsePhotoUploadBody;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 181
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 183
    :pswitch_e2
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUpload;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUpload;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 184
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 186
    :pswitch_e9
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseVideoUploadBody;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 187
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 189
    :pswitch_f0
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseScheduleRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseScheduleRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 190
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 192
    :pswitch_f7
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseSearchingKeywordsRetrieve;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseSearchingKeywordsRetrieve;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 193
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 195
    :pswitch_fe
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseSearchingSearch;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseSearchingSearch;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 196
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 198
    :pswitch_105
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseServiceProviderDeepLinkGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseServiceProviderDeepLinkGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 199
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 201
    :pswitch_10c
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseSnsGatewayHostGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseSnsGatewayHostGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 202
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 204
    :pswitch_113
    new-instance v1, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;

    .end local v1           #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;-><init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V

    .line 205
    .restart local v1       #response:Lcom/sec/android/app/sns/response/data/SnsResponse;
    goto/16 :goto_8

    .line 78
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_39
        :pswitch_33
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_63
        :pswitch_69
        :pswitch_6f
        :pswitch_75
        :pswitch_7b
        :pswitch_81
        :pswitch_87
        :pswitch_8e
        :pswitch_95
        :pswitch_9c
        :pswitch_a3
        :pswitch_aa
        :pswitch_b1
        :pswitch_b8
        :pswitch_bf
        :pswitch_c6
        :pswitch_cd
        :pswitch_d4
        :pswitch_db
        :pswitch_e2
        :pswitch_e9
        :pswitch_f0
        :pswitch_f7
        :pswitch_fe
        :pswitch_105
        :pswitch_10c
        :pswitch_113
    .end packed-switch
.end method

.method public createHttpMgrResponse(IIIILjava/lang/Object;Ljava/lang/String;)Lcom/sec/android/app/sns/response/data/SnsResponse;
    .registers 15
    .parameter "ID"
    .parameter "requestType"
    .parameter "internalCode"
    .parameter "httpStatusCode"
    .parameter "object"
    .parameter "redirectURL"

    .prologue
    .line 64
    new-instance v0, Lcom/sec/android/app/sns/response/data/SnsResponse;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
