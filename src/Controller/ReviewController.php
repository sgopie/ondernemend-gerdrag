<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ReviewController extends AbstractController
{
    #[Route('/reviews', name: 'app_review_index')]
    public function index(): Response
    {
        // TODO: Replace with actual database reviews
        $reviews = [
            [
                'name' => 'John Doe',
                'rating' => 5,
                'content' => 'Great product! Would definitely recommend.',
                'createdAt' => new \DateTime('2024-03-31'),
            ],
            [
                'name' => 'Jane Smith',
                'rating' => 4,
                'content' => 'Good quality, fast delivery.',
                'createdAt' => new \DateTime('2024-03-30'),
            ],
        ];

        return $this->render('review/index.html.twig', [
            'reviews' => $reviews,
        ]);
    }

    #[Route('/reviews/create', name: 'app_review_create', methods: ['POST'])]
    public function create(Request $request): Response
    {
        $name = $request->request->get('name');
        $rating = $request->request->get('rating');
        $content = $request->request->get('review');

        // TODO: Add validation and database storage
        // For now, we'll just redirect back to the reviews page
        $this->addFlash('success', 'Thank you for your review!');

        return $this->redirectToRoute('app_review_index');
    }
} 