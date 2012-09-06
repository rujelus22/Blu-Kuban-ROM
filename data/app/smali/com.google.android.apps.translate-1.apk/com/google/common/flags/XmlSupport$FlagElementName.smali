.class Lcom/google/common/flags/XmlSupport$FlagElementName;
.super Ljava/lang/Object;
.source "XmlSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flags/XmlSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlagElementName"
.end annotation


# static fields
.field private static final ALTNAME:Ljava/lang/String; = "altname"

.field private static final DOC:Ljava/lang/String; = "doc"

.field private static final DOCLEVEL:Ljava/lang/String; = "doclevel"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SHORTNAME:Ljava/lang/String; = "shortname"

.field private static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
