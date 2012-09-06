.class public Lcom/dropbox/android/activity/GalleryPickerActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/aV;
.implements Lcom/dropbox/android/util/d;
.implements Ldbxyzptlk/e/q;


# static fields
.field static final synthetic m:Z

.field private static final n:Ljava/lang/String;


# instance fields
.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/dropbox/android/activity/GalleryPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/activity/GalleryPickerActivity;->m:Z

    .line 23
    const-class v0, Lcom/dropbox/android/activity/GalleryPickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/GalleryPickerActivity;->n:Ljava/lang/String;

    return-void

    .line 20
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/GalleryPickerActivity;->p:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Set;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 61
    sget-boolean v0, Lcom/dropbox/android/activity/GalleryPickerActivity;->m:Z

    if-nez v0, :cond_12

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_12
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 63
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 66
    :cond_33
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, v0, v2}, Lcom/dropbox/android/util/b;->a(Lcom/dropbox/android/util/d;Landroid/content/Context;Ljava/util/Collection;Lcom/dropbox/android/util/Z;Landroid/database/Cursor;)Z

    .line 67
    return-void
.end method

.method public final a(Lcom/dropbox/android/util/e;Ljava/util/Collection;Lcom/dropbox/android/util/Z;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    iget-boolean v2, p0, Lcom/dropbox/android/activity/GalleryPickerActivity;->p:Z

    if-nez v2, :cond_11

    .line 73
    sget-object v2, Lcom/dropbox/android/activity/ad;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/android/util/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_26

    .line 88
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 79
    :pswitch_12
    iput-boolean v0, p0, Lcom/dropbox/android/activity/GalleryPickerActivity;->p:Z

    .line 80
    new-instance v2, Ldbxyzptlk/e/p;

    sget-object v3, Lcom/dropbox/android/util/e;->b:Lcom/dropbox/android/util/e;

    if-ne v3, p1, :cond_23

    :goto_1a
    invoke-direct {v2, p0, v0, p2, p3}, Ldbxyzptlk/e/p;-><init>(Landroid/content/Context;ZLjava/util/Collection;Lcom/dropbox/android/util/Z;)V

    .line 85
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Ldbxyzptlk/e/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11

    :cond_23
    move v0, v1

    .line 80
    goto :goto_1a

    .line 73
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public final b(I)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->finish()V

    .line 94
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->setResult(I)V

    .line 56
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->finish()V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    const-string v1, "GALLERY_PICKER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/GalleryPickerFragment;

    .line 39
    if-nez v0, :cond_33

    .line 40
    new-instance v0, Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;-><init>()V

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/activity/GalleryPickerFragment;->c(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/dropbox/android/activity/GalleryPickerActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v1

    .line 44
    const v2, 0x7f0d0053

    const-string v3, "GALLERY_PICKER"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 45
    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()I

    .line 49
    :cond_33
    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->a(Lcom/dropbox/android/activity/aV;)V

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lcom/dropbox/android/util/b;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
