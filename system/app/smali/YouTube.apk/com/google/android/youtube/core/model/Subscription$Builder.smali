.class public Lcom/google/android/youtube/core/model/Subscription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Type;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 172
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 165
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/Subscription;
    .registers 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 143
    sget-object v0, Lcom/google/android/youtube/core/model/l;->a:[I

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    .line 153
    :cond_11
    :goto_11
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Subscription;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Subscription$Type;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0

    .line 147
    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    :goto_29
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    goto :goto_29

    .line 148
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 149
    :pswitch_34
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 150
    :pswitch_39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    goto :goto_11

    .line 143
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_2f
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method public displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->displayUsername:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri:Landroid/net/Uri;

    .line 134
    return-object p0
.end method

.method public playlistTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->playlistTitle:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->query:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->title:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    .line 99
    return-object p0
.end method

.method public uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri:Landroid/net/Uri;

    .line 104
    return-object p0
.end method

.method public username(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Subscription$Builder;->username:Ljava/lang/String;

    .line 114
    return-object p0
.end method
