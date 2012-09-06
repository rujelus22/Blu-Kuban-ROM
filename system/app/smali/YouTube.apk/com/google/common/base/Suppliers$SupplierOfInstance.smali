.class Lcom/google/common/base/Suppliers$SupplierOfInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final instance:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    .line 202
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    return-object v0
.end method
