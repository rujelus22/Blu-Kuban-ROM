.class public Lcom/google/android/apps/books/util/ExternalUris;
.super Ljava/lang/Object;
.source "ExternalUris.java"


# static fields
.field private static final GOOGLE_QUERY_PREFIX:Landroid/net/Uri;

.field private static final TRANSLATE_QUERY_PREFIX:Landroid/net/Uri;

.field private static final WIKIPEDIA_QUERY_PREFIX:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "http://translate.google.com/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/ExternalUris;->TRANSLATE_QUERY_PREFIX:Landroid/net/Uri;

    .line 22
    const-string v0, "http://www.google.com/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/ExternalUris;->GOOGLE_QUERY_PREFIX:Landroid/net/Uri;

    .line 27
    const-string v0, "http://en.wikipedia.org/wiki/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/ExternalUris;->WIKIPEDIA_QUERY_PREFIX:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method
