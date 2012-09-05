.class Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;
.super Ljava/lang/Object;
.source "RepeatBtnGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mChangedListener:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;

    if-eqz v0, :cond_f

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    iget-object v0, v0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;->mChangedListener:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;

    invoke-interface {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup$OnChangedListener;->onCheckChanged(Lcom/sec/android/app/clockpackage/alarm/RepeatBtnGroup;)V

    .line 93
    :cond_f
    return-void
.end method
