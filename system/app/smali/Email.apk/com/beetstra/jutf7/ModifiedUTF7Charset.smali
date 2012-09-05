.class Lcom/beetstra/jutf7/ModifiedUTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "ModifiedUTF7Charset.java"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "aliases"

    .prologue
    .line 41
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method canEncodeDirectly(C)Z
    .registers 4
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;->shift()B

    move-result v1

    if-ne p1, v1, :cond_8

    .line 47
    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x20

    if-lt p1, v1, :cond_7

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method shift()B
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0x26

    return v0
.end method

.method unshift()B
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x2d

    return v0
.end method
