.class Lcom/sec/android/app/music/common/util/DrmPopup$1;
.super Ljava/lang/Object;
.source "DrmPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/util/DrmPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/util/DrmPopup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/music/common/util/DrmPopup$1;->this$0:Lcom/sec/android/app/music/common/util/DrmPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "OnClick called!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 54
    .local v0, result:Z
    return-void
.end method
