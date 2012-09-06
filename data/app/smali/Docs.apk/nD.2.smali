.class public final LnD;
.super LWW;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>(LWI;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, LWW;-><init>(LWI;)V

    .line 27
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, LnD;->bI(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 59
    const-class v0, Lcom/google/android/apps/docs/doclist/CooperateStateMachineProgressFragment;

    new-instance v1, LnE;

    invoke-direct {v1, p0}, LnE;-><init>(LnD;)V

    invoke-virtual {p0, v0, v1}, LnD;->a(Ljava/lang/Class;Lany;)V

    .line 67
    const-class v0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;

    new-instance v1, LnF;

    invoke-direct {v1, p0}, LnF;-><init>(LnD;)V

    invoke-virtual {p0, v0, v1}, LnD;->a(Ljava/lang/Class;Lany;)V

    .line 75
    const-class v0, Lcom/google/android/apps/docs/doclist/DocListGlobalSearchSuggestionProvider;

    new-instance v1, LnG;

    invoke-direct {v1, p0}, LnG;-><init>(LnD;)V

    invoke-virtual {p0, v0, v1}, LnD;->a(Ljava/lang/Class;Lany;)V

    .line 83
    new-instance v0, LnH;

    invoke-direct {v0, p0}, LnH;-><init>(LnD;)V

    invoke-virtual {p0, v0}, LnD;->a(LWY;)V

    .line 88
    return-void
.end method
