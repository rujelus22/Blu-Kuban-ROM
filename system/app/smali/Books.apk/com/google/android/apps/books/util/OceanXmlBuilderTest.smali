.class public Lcom/google/android/apps/books/util/OceanXmlBuilderTest;
.super Landroid/test/AndroidTestCase;
.source "OceanXmlBuilderTest.java"


# instance fields
.field private mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    .line 29
    invoke-static {}, Lcom/google/android/apps/books/util/OceanXmlBuilder;->newInstance()Lcom/google/android/apps/books/util/OceanXmlBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/util/OceanXmlBuilderTest;->mBuilder:Lcom/google/android/apps/books/util/OceanXmlBuilder;

    .line 30
    return-void
.end method
