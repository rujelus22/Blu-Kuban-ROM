.class public Lcom/google/api/services/plus/Plus$People;
.super Ljava/lang/Object;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/plus/Plus$People$Get;,
        Lcom/google/api/services/plus/Plus$People$Search;,
        Lcom/google/api/services/plus/Plus$People$List;,
        Lcom/google/api/services/plus/Plus$People$ListByCircle;,
        Lcom/google/api/services/plus/Plus$People$ListByActivity;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/plus/Plus;


# direct methods
.method public constructor <init>(Lcom/google/api/services/plus/Plus;)V
    .registers 2
    .parameter

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/google/api/services/plus/Plus$People;->this$0:Lcom/google/api/services/plus/Plus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    return-void
.end method
