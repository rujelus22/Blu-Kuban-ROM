.class Lcom/samsung/android/app/divx/DivXVodActivation$1;
.super Ljava/lang/Object;
.source "DivXVodActivation.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/divx/DivXVodActivation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/divx/DivXVodActivation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/divx/DivXVodActivation;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivXVodActivation$1;->this$0:Lcom/samsung/android/app/divx/DivXVodActivation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivXVodActivation$1;->this$0:Lcom/samsung/android/app/divx/DivXVodActivation;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/divx/DivXVodActivation$1;->this$0:Lcom/samsung/android/app/divx/DivXVodActivation;

    const-class v3, Lcom/samsung/android/app/divx/DivxStatus;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/divx/DivXVodActivation;->startActivity(Landroid/content/Intent;)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
