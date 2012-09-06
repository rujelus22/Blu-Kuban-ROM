.class public Lcom/twitter/android/TwitterApplication;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Lcom/twitter/android/ge;

    invoke-direct {v0, p0}, Lcom/twitter/android/ge;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
