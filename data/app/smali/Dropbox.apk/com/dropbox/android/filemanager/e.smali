.class public final Lcom/dropbox/android/filemanager/e;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/dropbox/android/filemanager/e;->b:Ljava/lang/String;

    .line 38
    iput-boolean p3, p0, Lcom/dropbox/android/filemanager/e;->c:Z

    .line 39
    return-void
.end method
