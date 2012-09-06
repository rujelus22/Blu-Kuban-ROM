.class public final Lcom/dropbox/android/provider/a;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field protected final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/dropbox/android/provider/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dropbox/android/provider/a;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/dropbox/android/provider/a;->c:Lcom/dropbox/android/provider/b;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dropbox/android/provider/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    return-object v0
.end method
