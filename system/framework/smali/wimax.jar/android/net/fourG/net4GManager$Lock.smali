.class public Landroid/net/fourG/net4GManager$Lock;
.super Ljava/lang/Object;
.source "net4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/net4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Lock"
.end annotation


# instance fields
.field protected mHeld:Z

.field protected mLockType:I

.field protected mRefCount:I

.field protected mRefCounted:Z

.field protected mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/fourG/net4GManager;


# direct methods
.method protected constructor <init>(Landroid/net/fourG/net4GManager;)V
    .registers 2
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Landroid/net/fourG/net4GManager$Lock;->this$0:Landroid/net/fourG/net4GManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    return-void
.end method

.method protected constructor <init>(Landroid/net/fourG/net4GManager;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 561
    iput-object p1, p0, Landroid/net/fourG/net4GManager$Lock;->this$0:Landroid/net/fourG/net4GManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 562
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 1

    .prologue
    .line 579
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 625
    return-void
.end method

.method public isHeld()Z
    .registers 2

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .registers 1

    .prologue
    .line 594
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 608
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    const-string v0, ""

    return-object v0
.end method
