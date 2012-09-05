.class public Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;
.super Landroid/os/Binder;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/apnews/engine/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/apnews/engine/DataService;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/sec/android/widgetapp/apnews/engine/DataService;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/engine/DataService$DataBinder;->this$0:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    return-object v0
.end method
