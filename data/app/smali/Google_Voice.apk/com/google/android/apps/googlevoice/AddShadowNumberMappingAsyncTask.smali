.class Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;
.super Landroid/os/AsyncTask;
.source "AddShadowNumberMappingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/ShadowNumbers;)V
    .registers 2
    .parameter "shadowNumbers"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    .line 20
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14
    check-cast p1, [Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;->doInBackground([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)Ljava/lang/Void;
    .registers 7
    .parameter "mappings"

    .prologue
    .line 24
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 25
    .local v3, mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/AddShadowNumberMappingAsyncTask;->shadowNumbers:Lcom/google/android/apps/googlevoice/ShadowNumbers;

    invoke-interface {v4, v3}, Lcom/google/android/apps/googlevoice/ShadowNumbers;->addShadowNumberMapping(Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27
    .end local v3           #mapping:Lcom/google/android/apps/googlevoice/core/ShadowNumberMapping;
    :cond_f
    const/4 v4, 0x0

    return-object v4
.end method
