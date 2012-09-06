.class public Lcom/google/android/apps/docs/editors/jsvm/Kix;
.super Ljava/lang/Object;
.source "Kix.java"


# direct methods
.method private static native AndroidBootstrapcreateApplication(J)J
.end method

.method private static native AndroidBootstrapcreateApplicationBuilder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native AndroidBootstraphandleHttpDataBatch(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native AndroidBootstraphandleHttpRequestFailure(JII)V
.end method

.method private static native AndroidBootstrapinvokeTimer(JD)I
.end method

.method private static native CommonTextAnnotationgetBackgroundColor(J)Ljava/lang/String;
.end method

.method private static native CommonTextAnnotationgetBold(J)Z
.end method

.method private static native CommonTextAnnotationgetForegroundColor(J)Ljava/lang/String;
.end method

.method private static native CommonTextAnnotationgetItalic(J)Z
.end method

.method private static native CommonTextAnnotationgetUnderline(J)Z
.end method

.method private static native DocosAnnotationgetCommentIds(J)[Ljava/lang/String;
.end method

.method private static native FeatureAnnotationgetEndIndex(J)I
.end method

.method private static native FeatureAnnotationgetFeatureType(J)I
.end method

.method private static native ImageAnnotationgetEntityId(J)Ljava/lang/String;
.end method

.method private static native ImageAnnotationgetHeight(J)D
.end method

.method private static native ImageAnnotationgetWidth(J)D
.end method

.method private static native KixTopLevelcreateApplicationBootstrap(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)J
.end method

.method private static native KixTopLevelcreateNativeApplicationBootstrap(J)J
.end method

.method private static native KixTopLevelhasMethodId(JI)Z
.end method

.method private static native KixwrapNativeApplicationStatusView(LvF;LvP;)J
.end method

.method private static native KixwrapNativeCollaboratorView(LvF;LvS;)J
.end method

.method private static native KixwrapNativeDocumentView(LvF;LvX;)J
.end method

.method private static native LayoutViewProviderhasMethodId(JI)Z
.end method

.method private static native NativeApplicationBuilderbuild(J)J
.end method

.method private static native NativeApplicationBuildersetApplicationStatusView(JJ)V
.end method

.method private static native NativeApplicationBuildersetCollaboratorView(JJ)V
.end method

.method private static native NativeApplicationBuildersetDocumentView(JJ)V
.end method

.method private static native NativeApplicationBuildersetEditable(JZ)V
.end method

.method private static native NativeApplicationBuildersetIsNewDocument(JZ)V
.end method

.method private static native NativeApplicationgetController(J)J
.end method

.method private static native NativeApplicationgetModel(J)J
.end method

.method private static native NativeApplicationgetUrlFetcher(J)J
.end method

.method private static native NativeApplicationgetView(J)J
.end method

.method private static native NativeApplicationinitialize(J)V
.end method

.method private static native NativeApplicationpause(J)V
.end method

.method private static native NativeApplicationresume(J)V
.end method

.method private static native NativeApplicationsetMutationBatchInterval(JI)V
.end method

.method private static native NativeControllerapplyBackgroundColor(JLjava/lang/String;)V
.end method

.method private static native NativeControllerapplyForegroundColor(JLjava/lang/String;)V
.end method

.method private static native NativeControllerbackspace(J)V
.end method

.method private static native NativeControllercarriageReturn(JI)V
.end method

.method private static native NativeControllerindent(J)V
.end method

.method private static native NativeControllerinsertText(JLjava/lang/String;)V
.end method

.method private static native NativeControlleroutdent(J)V
.end method

.method private static native NativeControllerredo(J)V
.end method

.method private static native NativeControllerreplaceText(JIILjava/lang/String;)V
.end method

.method private static native NativeControllersetCursorLocation(JIZ)V
.end method

.method private static native NativeControllersetParagraphAlignment(JI)V
.end method

.method private static native NativeControllersetSelection(JII)V
.end method

.method private static native NativeControllertoggleBold(J)V
.end method

.method private static native NativeControllertoggleBullet(JZ)V
.end method

.method private static native NativeControllertoggleItalic(J)V
.end method

.method private static native NativeControllertoggleUnderline(J)V
.end method

.method private static native NativeControllerundo(J)V
.end method

.method private static native NativeLayoutHelpercommit(JII)V
.end method

.method private static native NativeLayoutHelpercommitDelete(JII)V
.end method

.method private static native NativeLayoutHelpergetDeleteLength(J)I
.end method

.method private static native NativeLayoutHelpergetEndIndex(J)I
.end method

.method private static native NativeLayoutHelpergetNextRedrawType(J)I
.end method

.method private static native NativeLayoutHelpergetStartIndex(J)I
.end method

.method private static native NativeModelcomputeBulletText(JI)Ljava/lang/String;
.end method

.method private static native NativeModelgetBulletTextAnnotation(JI)J
.end method

.method private static native NativeModelgetDocosAnnotation(JI)J
.end method

.method private static native NativeModelgetDocosSpacerRange(JLjava/lang/String;)[I
.end method

.method private static native NativeModelgetEndOfSection(JI)I
.end method

.method private static native NativeModelgetFeatureAnnotation(JI)J
.end method

.method private static native NativeModelgetFeatureAnnotationWithLimit(JII)J
.end method

.method private static native NativeModelgetFootnoteNumber(JI)I
.end method

.method private static native NativeModelgetImageAnnotations(JI)[J
.end method

.method private static native NativeModelgetInternalLinkSpacerIndex(JLjava/lang/String;)I
.end method

.method private static native NativeModelgetParagraphAnnotation(JI)J
.end method

.method private static native NativeModelgetParagraphEndIndex(JI)I
.end method

.method private static native NativeModelgetSortedDocosAnnotationKeysForSpacerRange(JII)[I
.end method

.method private static native NativeModelgetSortedLinkAnnotationKeysForSpacerRange(JII)[I
.end method

.method private static native NativeModelgetSortedParagraphAnnotationKeys(J)[I
.end method

.method private static native NativeModelgetSortedTextAnnotationKeys(J)[I
.end method

.method private static native NativeModelgetSortedTextAnnotationKeysForSpacerRange(JII)[I
.end method

.method private static native NativeModelgetSpacers(JII)Ljava/lang/String;
.end method

.method private static native NativeModelgetSpacersLength(J)I
.end method

.method private static native NativeModelgetTextAnnotation(JI)J
.end method

.method private static native NativeModelgetUrlLinkAnnotation(JI)J
.end method

.method private static native NativeModelhasMethodId(JI)Z
.end method

.method private static native NativeUrlFetcherfetchImageUrl(JLjava/lang/String;)V
.end method

.method private static native NativeViewgetLayoutHelper(JLjava/lang/String;)J
.end method

.method private static native NativeViewgetLayoutViewProvider(J)J
.end method

.method private static native NativeViewgetSelectedTextAnnotation(J)J
.end method

.method private static native NativeViewhasMethodId(JI)Z
.end method

.method private static native ParagraphAnnotationgetAlignment(J)I
.end method

.method private static native ParagraphAnnotationgetBulletType(J)I
.end method

.method private static native ParagraphAnnotationgetIndentFirstLineInPoints(J)D
.end method

.method private static native ParagraphAnnotationgetIndentStartInPoints(J)D
.end method

.method private static native ParagraphAnnotationgetIsLeftToRight(J)Z
.end method

.method private static native ParagraphAnnotationgetLineSpacing(J)D
.end method

.method private static native ParagraphAnnotationgetSpacingAfterInPoints(J)D
.end method

.method private static native ParagraphAnnotationgetSpacingBeforeInPoints(J)D
.end method

.method private static native TextAnnotationgetBackgroundColor(J)Ljava/lang/String;
.end method

.method private static native TextAnnotationgetBold(J)Z
.end method

.method private static native TextAnnotationgetFontFamily(J)Ljava/lang/String;
.end method

.method private static native TextAnnotationgetFontSize(J)I
.end method

.method private static native TextAnnotationgetForegroundColor(J)Ljava/lang/String;
.end method

.method private static native TextAnnotationgetItalic(J)Z
.end method

.method private static native TextAnnotationgetStrikethrough(J)Z
.end method

.method private static native TextAnnotationgetUnderline(J)Z
.end method

.method private static native TextAnnotationgetVerticalAlign(J)I
.end method

.method private static native UrlLinkAnnotationgetUrl(J)Ljava/lang/String;
.end method

.method public static synthetic a(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ImageAnnotationgetWidth(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->FeatureAnnotationgetFeatureType(J)I

    move-result v0

    return v0
.end method

.method public static synthetic a(JD)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->AndroidBootstrapinvokeTimer(JD)I

    move-result v0

    return v0
.end method

.method public static synthetic a(JI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetParagraphEndIndex(JI)I

    move-result v0

    return v0
.end method

.method public static synthetic a(JLjava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetInternalLinkSpacerIndex(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static synthetic a()J
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->createKixContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->AndroidBootstrapcreateApplication(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetUrlLinkAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JII)J
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetFeatureAnnotationWithLimit(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JLjava/lang/String;)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeViewgetLayoutHelper(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->AndroidBootstrapcreateApplicationBuilder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)J
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static/range {p0 .. p6}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixTopLevelcreateApplicationBootstrap(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic a(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->CommonTextAnnotationgetBackgroundColor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(JI)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelcomputeBulletText(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(JII)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSpacers(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LvF;LvP;)LvQ;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4911
    new-instance v0, LvQ;

    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixwrapNativeApplicationStatusView(LvF;LvP;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, LvQ;-><init>(LvF;J)V

    return-object v0
.end method

.method public static a(LvF;LvS;)LvT;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5008
    new-instance v0, LvT;

    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixwrapNativeCollaboratorView(LvF;LvS;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, LvT;-><init>(LvF;J)V

    return-object v0
.end method

.method public static a(LvF;LvX;)LvY;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 5122
    new-instance v0, LvY;

    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixwrapNativeDocumentView(LvF;LvX;)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, LvY;-><init>(LvF;J)V

    return-object v0
.end method

.method public static synthetic a(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationinitialize(J)V

    return-void
.end method

.method public static synthetic a(JI)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationsetMutationBatchInterval(JI)V

    return-void
.end method

.method public static synthetic a(JII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->AndroidBootstraphandleHttpRequestFailure(JII)V

    return-void
.end method

.method public static synthetic a(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static/range {p0 .. p7}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->AndroidBootstraphandleHttpDataBatch(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(JIILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerreplaceText(JIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(JIZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllersetCursorLocation(JIZ)V

    return-void
.end method

.method public static synthetic a(JJ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuildersetApplicationStatusView(JJ)V

    return-void
.end method

.method public static synthetic a(JLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerinsertText(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(JZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuildersetEditable(JZ)V

    return-void
.end method

.method public static synthetic a(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->CommonTextAnnotationgetBold(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(JI)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->LayoutViewProviderhasMethodId(JI)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(J)[I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSortedTextAnnotationKeys(J)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(JII)[I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSortedLinkAnnotationKeysForSpacerRange(JII)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(JLjava/lang/String;)[I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetDocosSpacerRange(JLjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(JI)[J
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetImageAnnotations(JI)[J

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(J)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->DocosAnnotationgetCommentIds(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ImageAnnotationgetHeight(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->FeatureAnnotationgetEndIndex(J)I

    move-result v0

    return v0
.end method

.method public static synthetic b(JI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetFootnoteNumber(JI)I

    move-result v0

    return v0
.end method

.method public static synthetic b()J
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->createKixTopLevelInstance()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationgetModel(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetDocosAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->CommonTextAnnotationgetForegroundColor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationpause(J)V

    return-void
.end method

.method public static synthetic b(JI)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllercarriageReturn(JI)V

    return-void
.end method

.method public static synthetic b(JII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllersetSelection(JII)V

    return-void
.end method

.method public static synthetic b(JJ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuildersetDocumentView(JJ)V

    return-void
.end method

.method public static synthetic b(JLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerapplyBackgroundColor(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(JZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuildersetIsNewDocument(JZ)V

    return-void
.end method

.method public static synthetic b(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->CommonTextAnnotationgetItalic(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(JI)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelhasMethodId(JI)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(J)[I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSortedParagraphAnnotationKeys(J)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(JII)[I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSortedDocosAnnotationKeysForSpacerRange(JII)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetIndentFirstLineInPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpergetNextRedrawType(J)I

    move-result v0

    return v0
.end method

.method public static synthetic c(JI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetEndOfSection(JI)I

    move-result v0

    return v0
.end method

.method public static synthetic c(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationgetView(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetTextAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic c(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ImageAnnotationgetEntityId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationresume(J)V

    return-void
.end method

.method public static synthetic c(JI)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllersetParagraphAlignment(JI)V

    return-void
.end method

.method public static synthetic c(JII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpercommit(JII)V

    return-void
.end method

.method public static synthetic c(JJ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuildersetCollaboratorView(JJ)V

    return-void
.end method

.method public static synthetic c(JLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerapplyForegroundColor(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(JZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllertoggleBullet(JZ)V

    return-void
.end method

.method public static synthetic c(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->CommonTextAnnotationgetUnderline(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(JI)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeViewhasMethodId(JI)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(JII)[I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSortedTextAnnotationKeysForSpacerRange(JII)[I

    move-result-object v0

    return-object v0
.end method

.method private static native createKixContext()J
.end method

.method private static native createKixTopLevelInstance()J
.end method

.method public static synthetic d(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetIndentStartInPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpergetStartIndex(J)I

    move-result v0

    return v0
.end method

.method public static synthetic d(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationgetController(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetParagraphAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetBackgroundColor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerbackspace(J)V

    return-void
.end method

.method public static synthetic d(JII)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpercommitDelete(JII)V

    return-void
.end method

.method public static synthetic d(JLjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeUrlFetcherfetchImageUrl(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic d(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetIsLeftToRight(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic d(JI)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixTopLevelhasMethodId(JI)Z

    move-result v0

    return v0
.end method

.method public static synthetic e(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetLineSpacing(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpergetEndIndex(J)I

    move-result v0

    return v0
.end method

.method public static synthetic e(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationgetUrlFetcher(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetBulletTextAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetFontFamily(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerundo(J)V

    return-void
.end method

.method public static synthetic e(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetBold(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic f(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetSpacingAfterInPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic f(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeLayoutHelpergetDeleteLength(J)I

    move-result v0

    return v0
.end method

.method public static synthetic f(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeApplicationBuilderbuild(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic f(JI)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetFeatureAnnotation(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic f(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetForegroundColor(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerredo(J)V

    return-void
.end method

.method public static synthetic f(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetItalic(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic g(J)D
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetSpacingBeforeInPoints(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeModelgetSpacersLength(J)I

    move-result v0

    return v0
.end method

.method public static synthetic g(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeViewgetSelectedTextAnnotation(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g(J)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->UrlLinkAnnotationgetUrl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllertoggleBold(J)V

    return-void
.end method

.method public static synthetic g(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetStrikethrough(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic h(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetAlignment(J)I

    move-result v0

    return v0
.end method

.method public static synthetic h(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeViewgetLayoutViewProvider(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic h(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllertoggleItalic(J)V

    return-void
.end method

.method public static synthetic h(J)Z
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetUnderline(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic i(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->ParagraphAnnotationgetBulletType(J)I

    move-result v0

    return v0
.end method

.method public static synthetic i(J)J
    .registers 4
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->KixTopLevelcreateNativeApplicationBootstrap(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic i(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllertoggleUnderline(J)V

    return-void
.end method

.method public static synthetic j(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetFontSize(J)I

    move-result v0

    return v0
.end method

.method public static synthetic j(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControllerindent(J)V

    return-void
.end method

.method public static synthetic k(J)I
    .registers 3
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->TextAnnotationgetVerticalAlign(J)I

    move-result v0

    return v0
.end method

.method public static synthetic k(J)V
    .registers 2
    .parameter

    .prologue
    .line 10
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/editors/jsvm/Kix;->NativeControlleroutdent(J)V

    return-void
.end method
