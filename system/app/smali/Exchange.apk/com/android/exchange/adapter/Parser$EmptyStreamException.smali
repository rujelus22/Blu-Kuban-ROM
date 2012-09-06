.class public Lcom/android/exchange/adapter/Parser$EmptyStreamException;
.super Lcom/android/exchange/adapter/Parser$EofException;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyStreamException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/Parser;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/Parser;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/exchange/adapter/Parser$EmptyStreamException;->this$0:Lcom/android/exchange/adapter/Parser;

    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser$EofException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    return-void
.end method
