.class Lcom/android/email/MessagingController$Command;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public listener:Lcom/android/email/MessagingListener;

.field public runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/MessagingController$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2158
    invoke-direct {p0}, Lcom/android/email/MessagingController$Command;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    return-object v0
.end method
