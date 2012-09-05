.class Lcom/google/android/apps/books/preference/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/SpinnerPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/apps/books/preference/SpinnerPreference$1;->this$0:Lcom/google/android/apps/books/preference/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference$1;->this$0:Lcom/google/android/apps/books/preference/SpinnerPreference;

    #getter for: Lcom/google/android/apps/books/preference/SpinnerPreference;->mBinding:Z
    invoke-static {v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->access$000(Lcom/google/android/apps/books/preference/SpinnerPreference;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    :goto_8
    return-void

    .line 155
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/preference/SpinnerPreference$1;->this$0:Lcom/google/android/apps/books/preference/SpinnerPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/SpinnerPreference;->persistPreference()V

    goto :goto_8
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
