.class Lcom/google/android/apps/books/preference/TextZoomPreference$1;
.super Ljava/lang/Object;
.source "TextZoomPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/TextZoomPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/TextZoomPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    #getter for: Lcom/google/android/apps/books/preference/TextZoomPreference;->mBinding:Z
    invoke-static {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->access$000(Lcom/google/android/apps/books/preference/TextZoomPreference;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    :goto_8
    return-void

    .line 132
    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    #getter for: Lcom/google/android/apps/books/preference/TextZoomPreference;->mTextZoomValue:F
    invoke-static {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->access$100(Lcom/google/android/apps/books/preference/TextZoomPreference;)F

    move-result v0

    .line 133
    .local v0, newValue:F
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    #getter for: Lcom/google/android/apps/books/preference/TextZoomPreference;->mMinus:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->access$200(Lcom/google/android/apps/books/preference/TextZoomPreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_25

    .line 134
    sget v1, Lcom/google/android/apps/books/preference/TextZoomPreference;->ZOOM_INCREMENT:F

    sub-float/2addr v0, v1

    .line 138
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    #calls: Lcom/google/android/apps/books/preference/TextZoomPreference;->setTextSize(F)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/preference/TextZoomPreference;->access$400(Lcom/google/android/apps/books/preference/TextZoomPreference;F)V

    .line 139
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    invoke-virtual {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->persistPreference()V

    goto :goto_8

    .line 135
    :cond_25
    iget-object v1, p0, Lcom/google/android/apps/books/preference/TextZoomPreference$1;->this$0:Lcom/google/android/apps/books/preference/TextZoomPreference;

    #getter for: Lcom/google/android/apps/books/preference/TextZoomPreference;->mPlus:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/TextZoomPreference;->access$300(Lcom/google/android/apps/books/preference/TextZoomPreference;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_1a

    .line 136
    sget v1, Lcom/google/android/apps/books/preference/TextZoomPreference;->ZOOM_INCREMENT:F

    add-float/2addr v0, v1

    goto :goto_1a
.end method
