.class public Lcom/syncmldstmo/smlSyncResultTabListener;
.super Ljava/lang/Object;
.source "smlSyncResultTabListener.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .parameter "activity"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/syncmldstmo/smlSyncResultTabListener;,"Lcom/syncmldstmo/smlSyncResultTabListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/syncmldstmo/smlSyncResultTabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 8
    .parameter "activity"
    .parameter "tag"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/syncmldstmo/smlSyncResultTabListener;,"Lcom/syncmldstmo/smlSyncResultTabListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mTag:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mClass:Ljava/lang/Class;

    .line 28
    iput-object p4, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mArgs:Landroid/os/Bundle;

    .line 30
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    .line 31
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_37

    .line 33
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 34
    .local v0, ft:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 35
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 37
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_37
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 63
    .local p0, this:Lcom/syncmldstmo/smlSyncResultTabListener;,"Lcom/syncmldstmo/smlSyncResultTabListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 6
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 41
    .local p0, this:Lcom/syncmldstmo/smlSyncResultTabListener;,"Lcom/syncmldstmo/smlSyncResultTabListener<TT;>;"
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_1f

    .line 43
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    .line 44
    const v0, 0x1020002

    iget-object v1, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 50
    :goto_1e
    return-void

    .line 48
    :cond_1f
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1e
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 54
    .local p0, this:Lcom/syncmldstmo/smlSyncResultTabListener;,"Lcom/syncmldstmo/smlSyncResultTabListener<TT;>;"
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/syncmldstmo/smlSyncResultTabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 58
    :cond_9
    return-void
.end method
