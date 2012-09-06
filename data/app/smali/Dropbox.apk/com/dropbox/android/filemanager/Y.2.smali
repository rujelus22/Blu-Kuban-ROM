.class final enum Lcom/dropbox/android/filemanager/Y;
.super Lcom/dropbox/android/filemanager/U;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/filemanager/U;-><init>(Ljava/lang/String;ILcom/dropbox/android/filemanager/V;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/dropbox/android/filemanager/LocalEntry;)Z
    .registers 3
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    return v0
.end method
