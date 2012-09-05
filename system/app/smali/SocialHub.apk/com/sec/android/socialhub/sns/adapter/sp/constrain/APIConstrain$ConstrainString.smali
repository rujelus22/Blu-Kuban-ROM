.class public Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;
.super Ljava/lang/Object;
.source "APIConstrain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstrainString"
.end annotation


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain$ConstrainString;->value:Ljava/lang/String;

    .line 70
    return-void
.end method
