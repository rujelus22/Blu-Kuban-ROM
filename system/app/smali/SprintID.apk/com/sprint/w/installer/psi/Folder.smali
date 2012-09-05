.class public Lcom/sprint/w/installer/psi/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sprint/w/installer/psi/Listable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
