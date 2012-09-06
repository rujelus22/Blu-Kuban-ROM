.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 162
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$2;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumberSelection:[Ljava/lang/String;

    aget-object v1, v1, p3

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->forwardingNumber:Ljava/lang/String;

    .line 163
    return-void
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
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
