.class public LAQ;
.super Ljava/lang/Object;
.source "LinkSpan.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LAQ;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, LAQ;->a:Ljava/lang/String;

    return-object v0
.end method
