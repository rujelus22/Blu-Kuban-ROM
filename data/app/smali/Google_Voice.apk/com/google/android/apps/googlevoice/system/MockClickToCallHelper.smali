.class public Lcom/google/android/apps/googlevoice/system/MockClickToCallHelper;
.super Ljava/lang/Object;
.source "MockClickToCallHelper.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ClickToCallHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 2
    .parameter "dependencyResolver"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;)V
    .registers 3
    .parameter "clientActivity"
    .parameter "forwardingPhones"

    .prologue
    .line 22
    return-void
.end method

.method public placeClickToCall(Landroid/app/Activity;[Lcom/google/android/apps/googlevoice/core/Phone;Ljava/lang/String;)V
    .registers 4
    .parameter "clientActivity"
    .parameter "forwardingPhones"
    .parameter "destinationNumber"

    .prologue
    .line 27
    return-void
.end method
