.class public interface abstract Lcom/google/android/apps/books/provider/BooksContract$ResourceType;
.super Ljava/lang/Object;
.source "BooksContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceType"
.end annotation


# static fields
.field public static final CSS:Ljava/lang/String; = "text/css"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final NONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 865
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/provider/BooksContract$ResourceType;->NONE:Ljava/lang/String;

    return-void
.end method
