.class public Lcom/dropbox/android/util/al;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Landroid/net/Uri;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/util/al;->b:I

    .line 19
    iput-object p1, p0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/util/al;->b:I

    .line 36
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/util/al;->c:I

    .line 37
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    .line 38
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/dropbox/android/util/al;->b:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/dropbox/android/util/al;->c:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 30
    iget-object v0, p0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 31
    return-void
.end method
