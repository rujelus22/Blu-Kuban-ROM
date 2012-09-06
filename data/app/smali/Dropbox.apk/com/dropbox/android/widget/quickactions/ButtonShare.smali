.class public Lcom/dropbox/android/widget/quickactions/ButtonShare;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field private f:Lcom/dropbox/android/filemanager/LocalEntry;

.field private g:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonShare;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 16
    iput-object p3, p0, Lcom/dropbox/android/widget/quickactions/ButtonShare;->g:Lcom/dropbox/android/activity/delegate/x;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 21
    const v0, 0x7f03002f

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    if-eqz p2, :cond_9

    .line 32
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonShare;->g:Lcom/dropbox/android/activity/delegate/x;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/ButtonShare;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v0, p2, v1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 34
    :cond_9
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f09015c

    return v0
.end method
