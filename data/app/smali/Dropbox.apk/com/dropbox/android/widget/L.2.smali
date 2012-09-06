.class final Lcom/dropbox/android/widget/L;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/O;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/widget/FileItemView;)V
    .registers 2
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/dropbox/android/widget/L;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/widget/C;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/L;-><init>(Lcom/dropbox/android/widget/FileItemView;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/dropbox/android/widget/L;->a:Lcom/dropbox/android/widget/FileItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/FileItemView;->z:Landroid/os/Handler;

    new-instance v1, Lcom/dropbox/android/widget/M;

    invoke-direct {v1, p0, p1, p2}, Lcom/dropbox/android/widget/M;-><init>(Lcom/dropbox/android/widget/L;ILcom/dropbox/android/filemanager/Q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1146
    return-void
.end method
