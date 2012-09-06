.class final Lcom/dropbox/android/widget/T;
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
    .line 1149
    iput-object p1, p0, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/widget/C;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/T;-><init>(Lcom/dropbox/android/widget/FileItemView;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/FileItemView;->z:Landroid/os/Handler;

    new-instance v1, Lcom/dropbox/android/widget/U;

    invoke-direct {v1, p0, p1, p2}, Lcom/dropbox/android/widget/U;-><init>(Lcom/dropbox/android/widget/T;ILcom/dropbox/android/filemanager/Q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1167
    return-void
.end method
