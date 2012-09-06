.class public Lcom/google/android/youtube/core/model/Subscription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/i;
.implements Ljava/io/Serializable;


# instance fields
.field private channelUri:Landroid/net/Uri;

.field private displayUsername:Ljava/lang/String;

.field private editUri:Landroid/net/Uri;

.field private playlistTitle:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/google/android/youtube/core/model/Subscription$Type;

.field private uri:Landroid/net/Uri;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    .line 198
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Subscription;
    .registers 8

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 165
    sget-object v0, Lcom/google/android/youtube/core/model/k;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 175
    :cond_11
    :goto_11
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Subscription;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 169
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    :goto_2d
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    :cond_30
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    goto :goto_2d

    .line 170
    :pswitch_33
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 171
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 172
    :pswitch_3d
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 165
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_33
        :pswitch_38
        :pswitch_3d
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public channelUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->channelUri:Landroid/net/Uri;

    .line 156
    return-object p0
.end method

.method public displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 151
    return-object p0
.end method

.method public playlistTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 116
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 121
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 131
    return-object p0
.end method
