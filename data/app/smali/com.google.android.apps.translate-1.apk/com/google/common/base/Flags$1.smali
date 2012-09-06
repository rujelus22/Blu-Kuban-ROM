.class final Lcom/google/common/base/Flags$1;
.super Lcom/google/common/flags/Flag;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Flags;->flagForField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lcom/google/common/flags/Flag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/flags/Flag",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Ljava/lang/Class;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 5
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p2, p0, Lcom/google/common/base/Flags$1;->val$fieldType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/common/base/Flags$1;->val$field:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lcom/google/common/base/Flags$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/flags/Flag;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v2, p0, Lcom/google/common/base/Flags$1;->val$fieldType:Ljava/lang/Class;

    #calls: Lcom/google/common/base/Flags;->parseDirectValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/google/common/base/Flags;->access$000(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, value:Ljava/lang/Object;
    :try_start_6
    iget-object v2, p0, Lcom/google/common/base/Flags$1;->val$field:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/google/common/base/Flags$1;->val$object:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_d} :catch_e

    .line 284
    return-object v1

    .line 281
    :catch_e
    move-exception v0

    .line 282
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
