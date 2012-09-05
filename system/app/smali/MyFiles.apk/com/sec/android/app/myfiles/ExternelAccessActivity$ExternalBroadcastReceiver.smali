.class Lcom/sec/android/app/myfiles/ExternelAccessActivity$ExternalBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExternelAccessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ExternelAccessActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ExternelAccessActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/myfiles/ExternelAccessActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ExternelAccessActivity$ExternalBroadcastReceiver;->this$0:Lcom/sec/android/app/myfiles/ExternelAccessActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/myfiles/ExternelAccessActivity;Lcom/sec/android/app/myfiles/ExternelAccessActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/ExternelAccessActivity$ExternalBroadcastReceiver;-><init>(Lcom/sec/android/app/myfiles/ExternelAccessActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 82
    return-void
.end method
