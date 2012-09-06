.class public final Lcom/dropbox/android/filemanager/n;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/content/res/Resources;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dropbox/android/filemanager/n;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/dropbox/android/filemanager/n;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/dropbox/android/filemanager/n;->c:Landroid/content/res/Resources;

    .line 51
    iput-boolean p4, p0, Lcom/dropbox/android/filemanager/n;->d:Z

    .line 52
    return-void
.end method
