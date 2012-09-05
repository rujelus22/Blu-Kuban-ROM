.class Lcom/google/android/apps/books/preference/LineHeightPreference$1;
.super Ljava/lang/Object;
.source "LineHeightPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/LineHeightPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/LineHeightPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    #getter for: Lcom/google/android/apps/books/preference/LineHeightPreference;->mBinding:Z
    invoke-static {v1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->access$000(Lcom/google/android/apps/books/preference/LineHeightPreference;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 114
    :goto_8
    return-void

    .line 106
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    #getter for: Lcom/google/android/apps/books/preference/LineHeightPreference;->mLineHeightValue:F
    invoke-static {v1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->access$100(Lcom/google/android/apps/books/preference/LineHeightPreference;)F

    move-result v0

    .line 107
    .local v0, newValue:F
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    #getter for: Lcom/google/android/apps/books/preference/LineHeightPreference;->mMinus:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->access$200(Lcom/google/android/apps/books/preference/LineHeightPreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_25

    .line 108
    sget v1, Lcom/google/android/apps/books/preference/LineHeightPreference;->VALUE_INCREMENT:F

    sub-float/2addr v0, v1

    .line 112
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    #calls: Lcom/google/android/apps/books/preference/LineHeightPreference;->setLineHeight(F)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/preference/LineHeightPreference;->access$400(Lcom/google/android/apps/books/preference/LineHeightPreference;F)V

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->persistPreference()V

    goto :goto_8

    .line 109
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LineHeightPreference$1;->this$0:Lcom/google/android/apps/books/preference/LineHeightPreference;

    #getter for: Lcom/google/android/apps/books/preference/LineHeightPreference;->mPlus:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/LineHeightPreference;->access$300(Lcom/google/android/apps/books/preference/LineHeightPreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1a

    .line 110
    sget v1, Lcom/google/android/apps/books/preference/LineHeightPreference;->VALUE_INCREMENT:F

    add-float/2addr v0, v1

    goto :goto_1a
.end method
