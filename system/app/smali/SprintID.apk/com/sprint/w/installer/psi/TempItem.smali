.class Lcom/sprint/w/installer/psi/TempItem;
.super Ljava/lang/Object;
.source "TempItem.java"

# interfaces
.implements Lcom/sprint/w/installer/psi/Listable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x2

    return v0
.end method
