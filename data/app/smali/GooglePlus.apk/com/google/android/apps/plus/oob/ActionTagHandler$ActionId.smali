.class Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;
.super Ljava/lang/Object;
.source "ActionTagHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/oob/ActionTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionId"
.end annotation


# instance fields
.field public mActionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "actionId"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/ActionTagHandler$ActionId;->mActionId:Ljava/lang/String;

    .line 51
    return-void
.end method
