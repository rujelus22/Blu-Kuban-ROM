.class Lcom/google/android/finsky/activities/FlagItemFragment$1;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;->onInitViewBinders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

.field final synthetic val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment;Lcom/google/android/finsky/layout/ButtonBar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ButtonBar;->enablePositiveButton()V

    .line 117
    return-void
.end method
