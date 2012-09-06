.class public Lcom/android/inputmethod/latin/WordListInfo;
.super Ljava/lang/Object;
.source "WordListInfo.java"


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "locale"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordListInfo;->mId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/inputmethod/latin/WordListInfo;->mLocale:Ljava/lang/String;

    .line 30
    return-void
.end method
