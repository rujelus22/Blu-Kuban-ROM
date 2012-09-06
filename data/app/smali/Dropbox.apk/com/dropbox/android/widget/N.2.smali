.class public final Lcom/dropbox/android/widget/N;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/Q;


# instance fields
.field final a:Lcom/dropbox/android/filemanager/LocalEntry;

.field final b:Landroid/content/Context;

.field final c:Lcom/dropbox/android/widget/aa;


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;Lcom/dropbox/android/widget/aa;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p1, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 809
    iput-object p2, p0, Lcom/dropbox/android/widget/N;->b:Landroid/content/Context;

    .line 810
    iput-object p3, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    .line 811
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/dropbox/android/activity/delegate/x;)[Lcom/dropbox/android/widget/quickactions/a;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 815
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v2, v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;

    move-result-object v2

    instance-of v2, v2, Ldbxyzptlk/i/d;

    .line 817
    if-eqz v2, :cond_1c

    .line 818
    new-instance v2, Lcom/dropbox/android/widget/quickactions/ButtonCancelDownload;

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v2, v3}, Lcom/dropbox/android/widget/quickactions/ButtonCancelDownload;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 819
    new-array v0, v0, [Lcom/dropbox/android/widget/quickactions/a;

    aput-object v2, v0, v1

    .line 846
    :goto_1b
    return-object v0

    .line 821
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 822
    new-instance v3, Lcom/dropbox/android/widget/quickactions/ButtonShare;

    iget-object v4, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v5, p0, Lcom/dropbox/android/widget/N;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v5, p2}, Lcom/dropbox/android/widget/quickactions/ButtonShare;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-nez v3, :cond_3d

    .line 824
    new-instance v3, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;

    iget-object v4, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v3, v4}, Lcom/dropbox/android/widget/quickactions/ButtonFavorite;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    :cond_3d
    iget-object v3, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    sget-object v4, Lcom/dropbox/android/widget/aa;->c:Lcom/dropbox/android/widget/aa;

    if-eq v3, v4, :cond_4f

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    sget-object v4, Lcom/dropbox/android/widget/aa;->f:Lcom/dropbox/android/widget/aa;

    if-eq v3, v4, :cond_4f

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    sget-object v4, Lcom/dropbox/android/widget/aa;->e:Lcom/dropbox/android/widget/aa;

    if-ne v3, v4, :cond_af

    .line 830
    :cond_4f
    :goto_4f
    if-nez v0, :cond_8f

    .line 831
    iget-object v1, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-eqz v1, :cond_65

    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v1, v3}, Lcom/dropbox/android/filemanager/v;->b(Lcom/dropbox/android/filemanager/LocalEntry;)Ldbxyzptlk/i/f;

    move-result-object v1

    instance-of v1, v1, Ldbxyzptlk/i/a;

    if-nez v1, :cond_8f

    .line 832
    :cond_65
    new-instance v1, Lcom/dropbox/android/widget/quickactions/ButtonDelete;

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v1, v3}, Lcom/dropbox/android/widget/quickactions/ButtonDelete;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v1, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    sget-object v3, Lcom/dropbox/android/widget/aa;->d:Lcom/dropbox/android/widget/aa;

    if-eq v1, v3, :cond_8f

    .line 834
    new-instance v1, Lcom/dropbox/android/widget/quickactions/ButtonRename;

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v1, v3}, Lcom/dropbox/android/widget/quickactions/ButtonRename;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v1, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-nez v1, :cond_8f

    .line 837
    new-instance v1, Lcom/dropbox/android/widget/quickactions/ButtonExport;

    iget-object v3, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v1, v3, p2}, Lcom/dropbox/android/widget/quickactions/ButtonExport;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/activity/delegate/x;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_8f
    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/dropbox/android/widget/N;->c:Lcom/dropbox/android/widget/aa;

    sget-object v1, Lcom/dropbox/android/widget/aa;->d:Lcom/dropbox/android/widget/aa;

    if-ne v0, v1, :cond_a1

    .line 843
    :cond_97
    new-instance v0, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;

    iget-object v1, p0, Lcom/dropbox/android/widget/N;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/widget/quickactions/ButtonViewInFolder;-><init>(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_a1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dropbox/android/widget/quickactions/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/android/widget/quickactions/a;

    goto/16 :goto_1b

    :cond_af
    move v0, v1

    .line 827
    goto :goto_4f
.end method
