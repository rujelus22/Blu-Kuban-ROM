.class public abstract Lcom/sec/android/app/sns/ISnsRequester$Stub;
.super Landroid/os/Binder;
.source "ISnsRequester.java"

# interfaces
.implements Lcom/sec/android/app/sns/ISnsRequester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/ISnsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_6ba

    .line 797
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->authLogin(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 57
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_7

    .line 63
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_30
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 68
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->authLogout(II)I

    move-result v10

    .line 69
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v0, 0x1

    goto :goto_7

    .line 75
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_49
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->activityForward(ILjava/lang/String;)I

    move-result v10

    .line 81
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v0, 0x1

    goto :goto_7

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_62
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 92
    .local v11, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 94
    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_92

    const/4 v3, 0x1

    .line 96
    .local v3, _arg2:Z
    :goto_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    .line 97
    .local v4, _arg3:Z
    :goto_85
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->activityRetrieve(ILjava/util/Map;ZZ)I

    move-result v10

    .line 98
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 94
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_92
    const/4 v3, 0x0

    goto :goto_7e

    .line 96
    .restart local v3       #_arg2:Z
    :cond_94
    const/4 v4, 0x0

    goto :goto_85

    .line 104
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v3           #_arg2:Z
    .end local v11           #cl:Ljava/lang/ClassLoader;
    :sswitch_96
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 109
    .restart local v11       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 111
    .restart local v2       #_arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bf

    const/4 v3, 0x1

    .line 112
    .restart local v3       #_arg2:Z
    :goto_b2
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->activityRetrieveNext(ILjava/util/Map;Z)I

    move-result v10

    .line 113
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 111
    .end local v3           #_arg2:Z
    .end local v10           #_result:I
    :cond_bf
    const/4 v3, 0x0

    goto :goto_b2

    .line 119
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v11           #cl:Ljava/lang/ClassLoader;
    :sswitch_c1
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ef

    const/4 v6, 0x1

    .local v6, _arg5:Z
    :goto_e1
    move-object v0, p0

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->activityStatuslistGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 133
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 131
    .end local v6           #_arg5:Z
    .end local v10           #_result:I
    :cond_ef
    const/4 v6, 0x0

    goto :goto_e1

    .line 139
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_f1
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 143
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->activityStatuslistGetNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 151
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 157
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_118
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 172
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentPost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 173
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 179
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_147
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 191
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_179

    const/4 v7, 0x1

    .local v7, _arg6:Z
    :goto_16b
    move-object v0, p0

    .line 194
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentRetrieve(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 195
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 193
    .end local v7           #_arg6:Z
    .end local v10           #_result:I
    :cond_179
    const/4 v7, 0x0

    goto :goto_16b

    .line 201
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_17b
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 214
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentRetrieveNext(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 215
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 221
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_1a6
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 231
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 233
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 235
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d8

    const/4 v7, 0x1

    .restart local v7       #_arg6:Z
    :goto_1ca
    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentFavoritePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 237
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 235
    .end local v7           #_arg6:Z
    .end local v10           #_result:I
    :cond_1d8
    const/4 v7, 0x0

    goto :goto_1ca

    .line 243
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_1da
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ff

    const/4 v4, 0x1

    .line 252
    .local v4, _arg3:Z
    :goto_1f2
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentFavoriteGetUser(IILjava/lang/String;Z)I

    move-result v10

    .line 253
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 251
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_1ff
    const/4 v4, 0x0

    goto :goto_1f2

    .line 259
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_201
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->commentFavoriteGetUserNext(IILjava/lang/String;)I

    move-result v10

    .line 267
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 273
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_21f
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendRequestPost(IILjava/lang/String;)I

    move-result v10

    .line 281
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 287
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_23d
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendDelete(IILjava/lang/String;)I

    move-result v10

    .line 295
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 301
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_25b
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 305
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 309
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_280

    const/4 v4, 0x1

    .line 310
    .restart local v4       #_arg3:Z
    :goto_273
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendListRetrieveEx(IILjava/lang/String;Z)I

    move-result v10

    .line 311
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 309
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_280
    const/4 v4, 0x0

    goto :goto_273

    .line 317
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_282
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendListRetrieveExNext(IILjava/lang/String;)I

    move-result v10

    .line 325
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 331
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_2a0
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ca

    const/4 v5, 0x1

    .local v5, _arg4:Z
    :goto_2bc
    move-object v0, p0

    .line 342
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendGroupingGet(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 343
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 341
    .end local v5           #_arg4:Z
    .end local v10           #_result:I
    :cond_2ca
    const/4 v5, 0x0

    goto :goto_2bc

    .line 349
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_2cc
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 357
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->friendGroupingGetNext(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 359
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 365
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_2ee
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 369
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 373
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_313

    const/4 v4, 0x1

    .line 374
    .local v4, _arg3:Z
    :goto_306
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->groupRetrieve(IILjava/lang/String;Z)I

    move-result v10

    .line 375
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 373
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_313
    const/4 v4, 0x0

    goto :goto_306

    .line 381
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_315
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 387
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->groupRetrieveNext(IILjava/lang/String;)I

    move-result v10

    .line 389
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 395
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_333
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 401
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 406
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->messageDelete(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 407
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 413
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_35a
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 417
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 419
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 423
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    .line 424
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->messageGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 425
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 431
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_381
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 437
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 439
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, _arg3:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 445
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 447
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, _arg7:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg8:Ljava/lang/String;
    move-object v0, p0

    .line 450
    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->messagePost(IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 451
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 457
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v9           #_arg8:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_3b8
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 461
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 465
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3dd

    const/4 v4, 0x1

    .line 466
    .local v4, _arg3:Z
    :goto_3d0
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->messageThreadRetrieve(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v10

    .line 467
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 465
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_3dd
    const/4 v4, 0x0

    goto :goto_3d0

    .line 473
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_3df
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 480
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->messageThreadRetrieveNext(ILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 481
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 487
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_3fd
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 491
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 493
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #_arg4:Ljava/lang/String;
    move-object v0, p0

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->notePost(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 499
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 505
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_424
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 509
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 510
    .local v2, _arg1:[I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->notificationPost(I[I)I

    move-result v10

    .line 511
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 517
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v10           #_result:I
    :sswitch_43e
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45f

    const/4 v3, 0x1

    .line 524
    .local v3, _arg2:Z
    :goto_452
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->notificationRetrieve(IIZ)I

    move-result v10

    .line 525
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 523
    .end local v3           #_arg2:Z
    .end local v10           #_result:I
    :cond_45f
    const/4 v3, 0x0

    goto :goto_452

    .line 531
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_461
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 535
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 536
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->notificationRetrieveNext(II)I

    move-result v10

    .line 537
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 543
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_47b
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 547
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 549
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 552
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->peopleProfileGet(IILjava/lang/String;I)I

    move-result v10

    .line 553
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 559
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:I
    .end local v10           #_result:I
    :sswitch_49d
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 563
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 565
    .local v2, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->peopleProfileSet(I[ILjava/lang/String;)I

    move-result v10

    .line 567
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 573
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_4bb
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 578
    .restart local v11       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 580
    .local v2, _arg1:Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e4

    const/4 v3, 0x1

    .line 581
    .local v3, _arg2:Z
    :goto_4d7
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->photoAlbumGet(ILjava/util/Map;Z)I

    move-result v10

    .line 582
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 580
    .end local v3           #_arg2:Z
    .end local v10           #_result:I
    :cond_4e4
    const/4 v3, 0x0

    goto :goto_4d7

    .line 588
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v11           #cl:Ljava/lang/ClassLoader;
    :sswitch_4e6
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 592
    .restart local v1       #_arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    .line 593
    .restart local v11       #cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 594
    .restart local v2       #_arg1:Ljava/util/Map;
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->photoAlbumGetNext(ILjava/util/Map;)I

    move-result v10

    .line 595
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 601
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/util/Map;
    .end local v10           #_result:I
    .end local v11           #cl:Ljava/lang/ClassLoader;
    :sswitch_508
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 607
    .local v2, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 613
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 615
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_541

    .line 616
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelFileDescriptor;

    .local v7, _arg6:Landroid/os/ParcelFileDescriptor;
    :goto_533
    move-object v0, p0

    .line 621
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->photoUpload(I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v10

    .line 622
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 619
    .end local v7           #_arg6:Landroid/os/ParcelFileDescriptor;
    .end local v10           #_result:I
    :cond_541
    const/4 v7, 0x0

    .restart local v7       #_arg6:Landroid/os/ParcelFileDescriptor;
    goto :goto_533

    .line 628
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Landroid/os/ParcelFileDescriptor;
    :sswitch_543
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 632
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 636
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 638
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_578

    .line 641
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .local v6, _arg5:Landroid/os/ParcelFileDescriptor;
    :goto_56a
    move-object v0, p0

    .line 646
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->videoUpload(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v10

    .line 647
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 644
    .end local v6           #_arg5:Landroid/os/ParcelFileDescriptor;
    .end local v10           #_result:I
    :cond_578
    const/4 v6, 0x0

    .restart local v6       #_arg5:Landroid/os/ParcelFileDescriptor;
    goto :goto_56a

    .line 653
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Landroid/os/ParcelFileDescriptor;
    :sswitch_57a
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 657
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->searchKeywordRetrieve(II)I

    move-result v10

    .line 659
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 665
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_594
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 669
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 673
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5b9

    const/4 v4, 0x1

    .line 674
    .local v4, _arg3:Z
    :goto_5ac
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->searchingSearch(IILjava/lang/String;Z)I

    move-result v10

    .line 675
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 673
    .end local v4           #_arg3:Z
    .end local v10           #_result:I
    :cond_5b9
    const/4 v4, 0x0

    goto :goto_5ac

    .line 681
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_5bb
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 685
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 687
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 688
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->searchingSearchNext(IILjava/lang/String;)I

    move-result v10

    .line 689
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 695
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_5d9
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 699
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 701
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 703
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg7:Ljava/lang/String;
    move-object v0, p0

    .line 712
    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->serviceProviderDeepLinkGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 713
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 715
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 719
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_60c
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 722
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->snsGatewayHostGet(I)I

    move-result v10

    .line 723
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 729
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_622
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 733
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 735
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 737
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 738
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->oAuthCredentialGet(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 739
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 745
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v10           #_result:I
    :sswitch_644
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->abortRequest(II)V

    .line 751
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 756
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_65a
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 760
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 762
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 764
    .local v3, _arg2:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 765
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->syncSNSData(II[II)I

    move-result v10

    .line 766
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 772
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v10           #_result:I
    :sswitch_67c
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 776
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 777
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->cancelSync(II)Z

    move-result v10

    .line 778
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v10, :cond_699

    const/4 v0, 0x1

    :goto_693
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 779
    :cond_699
    const/4 v0, 0x0

    goto :goto_693

    .line 784
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:Z
    :sswitch_69b
    const-string v0, "com.sec.android.app.sns.ISnsRequester"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 790
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 791
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->testReqMgrExceptionCase(III)I

    move-result v10

    .line 792
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    nop

    :sswitch_data_6ba
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_30
        0x3 -> :sswitch_49
        0x4 -> :sswitch_62
        0x5 -> :sswitch_96
        0x6 -> :sswitch_c1
        0x7 -> :sswitch_f1
        0x8 -> :sswitch_118
        0x9 -> :sswitch_147
        0xa -> :sswitch_17b
        0xb -> :sswitch_1a6
        0xc -> :sswitch_1da
        0xd -> :sswitch_201
        0xe -> :sswitch_21f
        0xf -> :sswitch_23d
        0x10 -> :sswitch_25b
        0x11 -> :sswitch_282
        0x12 -> :sswitch_2a0
        0x13 -> :sswitch_2cc
        0x14 -> :sswitch_2ee
        0x15 -> :sswitch_315
        0x16 -> :sswitch_333
        0x17 -> :sswitch_35a
        0x18 -> :sswitch_381
        0x19 -> :sswitch_3b8
        0x1a -> :sswitch_3df
        0x1b -> :sswitch_3fd
        0x1c -> :sswitch_424
        0x1d -> :sswitch_43e
        0x1e -> :sswitch_461
        0x1f -> :sswitch_47b
        0x20 -> :sswitch_49d
        0x21 -> :sswitch_4bb
        0x22 -> :sswitch_4e6
        0x23 -> :sswitch_508
        0x24 -> :sswitch_543
        0x25 -> :sswitch_57a
        0x26 -> :sswitch_594
        0x27 -> :sswitch_5bb
        0x28 -> :sswitch_5d9
        0x29 -> :sswitch_60c
        0x2a -> :sswitch_622
        0x2b -> :sswitch_644
        0x2c -> :sswitch_65a
        0x2d -> :sswitch_67c
        0x2e -> :sswitch_69b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
