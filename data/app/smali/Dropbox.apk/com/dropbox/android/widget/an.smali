.class final Lcom/dropbox/android/widget/an;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/O;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/LocalItemView;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/widget/LocalItemView;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/dropbox/android/widget/an;->a:Lcom/dropbox/android/widget/LocalItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/widget/LocalItemView;Lcom/dropbox/android/widget/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/dropbox/android/widget/an;-><init>(Lcom/dropbox/android/widget/LocalItemView;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/dropbox/android/widget/an;->a:Lcom/dropbox/android/widget/LocalItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/LocalItemView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/dropbox/android/widget/ao;

    invoke-direct {v1, p0, p1, p2}, Lcom/dropbox/android/widget/ao;-><init>(Lcom/dropbox/android/widget/an;ILcom/dropbox/android/filemanager/Q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
