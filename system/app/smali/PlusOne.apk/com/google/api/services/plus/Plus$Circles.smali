.class public Lcom/google/api/services/plus/Plus$Circles;
.super Ljava/lang/Object;
.source "Plus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Circles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/plus/Plus$Circles$List;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/plus/Plus;


# direct methods
.method public constructor <init>(Lcom/google/api/services/plus/Plus;)V
    .registers 2
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/google/api/services/plus/Plus$Circles;->this$0:Lcom/google/api/services/plus/Plus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    return-void
.end method
