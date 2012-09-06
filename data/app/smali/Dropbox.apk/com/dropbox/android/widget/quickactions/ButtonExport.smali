.class public Lcom/dropbox/android/widget/quickactions/ButtonExport;
.super Lcom/dropbox/android/widget/quickactions/a;
.source "panda.py"


# instance fields
.field private f:Lcom/dropbox/android/filemanager/LocalEntry;

.field private g:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/activity/delegate/x;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dropbox/android/widget/quickactions/a;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dropbox/android/widget/quickactions/ButtonExport;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 16
    iput-object p2, p0, Lcom/dropbox/android/widget/quickactions/ButtonExport;->g:Lcom/dropbox/android/activity/delegate/x;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 21
    const v0, 0x7f03002b

    return v0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/android/widget/quickactions/ButtonExport;->g:Lcom/dropbox/android/activity/delegate/x;

    iget-object v1, p0, Lcom/dropbox/android/widget/quickactions/ButtonExport;->f:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v0, p2, p1, v1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 32
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f09015f

    return v0
.end method
