.class Lcom/android/contacts/quickcontact/ResolveCache$Entry;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/ResolveCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public bestResolve:Landroid/content/pm/ResolveInfo;

.field public icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>()V

    return-void
.end method
