.class Lcom/google/android/apps/books/preference/RadioGroupPreference$1;
.super Ljava/lang/Object;
.source "RadioGroupPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/RadioGroupPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/RadioGroupPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    #getter for: Lcom/google/android/apps/books/preference/RadioGroupPreference;->mBinding:Z
    invoke-static {v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->access$000(Lcom/google/android/apps/books/preference/RadioGroupPreference;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    :goto_8
    return-void

    .line 114
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->persistPreference()V

    goto :goto_8
.end method
