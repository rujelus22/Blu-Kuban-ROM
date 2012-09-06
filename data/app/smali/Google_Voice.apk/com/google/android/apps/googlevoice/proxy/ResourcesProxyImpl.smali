.class public Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;
.super Ljava/lang/Object;
.source "ResourcesProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/ResourcesProxy;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2
    .parameter "resources"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;->resources:Landroid/content/res/Resources;

    .line 17
    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ResourcesProxyImpl;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
