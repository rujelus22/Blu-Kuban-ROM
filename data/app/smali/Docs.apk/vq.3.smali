.class public Lvq;
.super Ljava/lang/Object;
.source "JSObject.java"

# interfaces
.implements Lvp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/jsvm/JSObject;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/docs/editors/jsvm/JSObject;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lvq;->a:Lcom/google/android/apps/docs/editors/jsvm/JSObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Factory does not implement this creation method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
